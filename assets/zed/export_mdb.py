# /// script
# dependencies = [
#   "lmdb==1.6.2",
# ]
# ///


## Script to dump the zed prompt database (LMDB) as json
## run with: uv run export_mdb.py

import os
import json
import lmdb

def set_prompt_info(prompt_dict, uuid, title=None, prompt=None):
    if uuid not in prompt_dict:
        prompt_dict[uuid]={}
    if title is not None:
        prompt_dict[uuid]["title"]=title
    if prompt is not None:
        prompt_dict[uuid]["prompt"]=prompt
    return prompt_dict

def dump_db(env, prompt_dict, db_name=None):
    print(f"Inspecting {"main" if db_name is None else db_name.decode("utf-8")}")
    child_db = env.open_db(db_name) if db_name else None
    with env.begin() as txn:
        child_cursor = txn.cursor(child_db) # Cursor on child database.
        for key, value in child_cursor:
            # print(f"k:{key},v:{value}")
            key_str = key.decode("utf-8")
            key_json = json.loads(key_str)
            if "uuid" in key_json.keys():
                uuid = key_json.get("uuid")
                # print(f"uuid:{uuid}")
                if db_name==b'bodies.v2':
                    prompt = value.decode("utf-8")
                    # print(f"prompt:{prompt}")
                    set_prompt_info(prompt_dict, uuid, prompt=prompt)
                elif db_name==b'metadata.v2':
                    value_str = value.decode("utf-8")
                    value_json = json.loads(value_str)
                    if "title" in value_json.keys():
                        title = value_json.get("title")
                        # print(f"title:{title}")
                        set_prompt_info(prompt_dict, uuid, title=title)
    return prompt_dict

def writefile(output_file, content):
    print(f"Write to output file {output_file}")
    with open(output_file, "w", encoding="utf-8") as file:
        file.write(content)

def lmm_to_json(env_path):
    # https://lmdb.readthedocs.io
    print(f"opening {env_path}")
    env = lmdb.open(env_path, readonly=True,subdir=True, max_dbs=2)
    # dump_db(env)
    # https://github.com/zed-industries/zed/blob/d4d36d1adf0559cb4e6010c4fef880e0725ea0b0/crates/prompt_library/src/prompt_store.rs#L129-L132
    prompt_dict = {}
    dump_db(env,prompt_dict,b'bodies.v2')
    dump_db(env,prompt_dict,b'metadata.v2')
    writefile("prompts.json",json.dumps(prompt_dict, indent=2))

def main():
    home_dir = os.path.expanduser('~')
    mdb_dir = f"{home_dir}/.config/zed/prompts/prompts-library-db.0.mdb/"
    lmm_to_json(mdb_dir)

if __name__ == "__main__":
    main()
