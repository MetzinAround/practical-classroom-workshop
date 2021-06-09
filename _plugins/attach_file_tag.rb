ATTACHED_FILES_DIRECTORY = "/attached_files"

module Jekyll
    class AttachFileTag < Liquid::Tag
        def initialize(tag_name, input, tokens)
            super
            @input = input
        end

        def render(context)
            url = context.registers[:site].config['url']
            baseurl = context.registers[:site].config['baseurl']

            # Attempt to parse the JSON if any is passed in
            title = ""
            file_name = ""
            begin
                if( !@input.nil? && !@input.empty? )
                    jdata = JSON.parse(@input)
                    file_name = jdata["file_name"].strip
                    if( jdata.key?("title") )
                        title = jdata["title"].strip
                    else
                        title = file_name
                    end
                end
            rescue
            end

            full_path = File.join baseurl, ATTACHED_FILES_DIRECTORY, '/', file_name

            "[#{title}](#{full_path})"
        end
    end
end

Liquid::Template.register_tag('attach_file', Jekyll::AttachFileTag)