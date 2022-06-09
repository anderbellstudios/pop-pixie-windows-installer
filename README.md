# Pop Pixie Windows Installer Build Script

This tool uses Inno Setup to create a Windows installer for Pop Pixie.

## Dependencies

- Docker
- erb (`gem install erb`)

## Usage

1. Ensure `./Pop Pixie` contains the Windows executable and all other files requried to run Pop Pixie
2. Create a file `./version` containing the version number of the build
  ```
  .
  ├── build-installer
  ├── Pop Pixie
  │   └── Pop Pixie.exe
  └── version
  ```
3. Run `./build-installer`

If all goes well, the installer will be created at `./Output/Install Pop Pixie.exe`.
