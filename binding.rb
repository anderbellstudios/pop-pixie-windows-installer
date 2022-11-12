module WindowsPackager
  def self.package(build)
    destination_dir = File.join(__dir__, 'Pop Pixie')

    FileUtils.rm_rf(destination_dir)
    build.mv(destination_dir)

    unless system(File.join(__dir__, 'build-installer'))
      raise 'Failed to create Windows installer'
    end

    return File.join(__dir__, 'Output', 'Install Pop Pixie.exe')
  end
end
