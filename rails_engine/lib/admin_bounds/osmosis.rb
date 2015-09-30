module AdminBounds
  class Osmosis
    def initialize(file)
      @file = file
    end

    def import_administrative_boundaries()
      config = Rails.configuration.database_configuration

      puts "osmosis --read-pbf file=#{@file}"\
        " --tf accept-ways boundary=administrative"\
        " --used-node"\
        " --write-pgsql database=#{config[Rails.env]['database']}"\
        " user=osmosis"
    end

    private

    def system(command)
      exit_status = Kernel::system 'bash', '-c', command
      raise RuntimeError if exit_status == false
    end
  end
end
