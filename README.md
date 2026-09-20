# Assembler

## Installing on linux

Download this [TASM](https://github.com/qb40/tasm/releases)

Unzip and insert `TASM.EXE`, `RTM.EXE`, `DPMI16BI.OVL` and `TLINK.EXE` into this repository.

## Running

Then on the command line, follow these steps.

Mount the path on C

```cmd
mount c ~/PATH_TO_THIS_REPOSITORY
```

Use the mounted directory

```cmd
c:
```

Build the application

```cmd
tasm main.asm
tlink main.obj
```

Run the application

```cmd
main.exe
```
