module SpreeKomoju
  module ControllerHelpers
    def permitted_source_attributes
      super.push(permitted_komoju_konbini_attributes)
      super.push(permitted_komoju_banktransfer_attributes)
      super.push(permitted_komoju_pay_easy_attributes)
      super.push(permitted_komoju_web_money_attributes)
      super.flatten.uniq
    end

    private

    def permitted_komoju_konbini_attributes
      :convenience
    end

    def permitted_komoju_banktransfer_attributes
      [:email, :phone, :family_name, :given_name, :family_name_kana, :given_name_kana]
    end

    def permitted_komoju_pay_easy_attributes
      [:email, :phone, :family_name, :given_name, :family_name_kana, :given_name_kana]
    end

    def permitted_komoju_web_money_attributes
      [:email, :prepaid_number]
    end
  end
end
