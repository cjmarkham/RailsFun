module DateHelper
    def format(time, format=:long)
        time.strftime(format)
    end
end