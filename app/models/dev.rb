class Dev < ActiveRecord::Base
    has_many :freebies
    has_many :companies, through: :freebies

    def received_one?(item_name)
        # found = self.freebies.where("item_name == ?", item_name)
        # found[0] ? true : false

        # finding the value
        found = self.freebies.find_by(item_name: item_name)

        # ternary condition
        found ? true : false
    end

    def give_away(dev, freebie)
        binding.pry
    end
end


