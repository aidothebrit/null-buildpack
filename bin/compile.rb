#!/usr/bin/env ruby

build_dir = ARGV[0]

script = "#!/usr/bin/env bash"
script = [script, "\n", "while [ : ]"].join()
script = [script, "\n", "do"].join()
script = [script, "\n", "  echo \"RUNNING\""].join()
script = [script, "\n", "  sleep 1"].join()
script = [script, "\n", "done"].join()

script_path = File.join(build_dir, "start.sh")
File.open(script_path, 'w') { |f| f.write(script) }
File.chmod(0555, script_path)

