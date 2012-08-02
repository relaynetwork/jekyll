module Jekyll
  class Liquid::Tag
    def get_host_for_environment context
      if context.registers[:site].config['asset_hosts'] && context.registers[:site].config['asset_hosts'][ENV['RN_ENVIRONMENT']]
        host_url = context.registers[:site].config['asset_hosts'][ENV['RN_ENVIRONMENT']]
        host_url.chomp('/')
      else
        ""
      end
    end
  end

end
