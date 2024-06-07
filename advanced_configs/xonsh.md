# Fish config


## Python virtual envs



Alias
```python
aliases['venvc'] = 'vox new @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['activate'] = 'vox activate @($(basename $(pwd)).strip()+"_virtualenv")'
aliases['deactivate'] = 'vox deactivate'
```

## Ressources

- [Xonsh shell](https://xon.sh/)
- [My xonsh config](../assets/xonsh/xonsh_custom_config.py)