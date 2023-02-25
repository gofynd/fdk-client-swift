

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var name: String

        public var displayName: String

        public var isPayByCardPl: Bool?

        public var anonymousEnable: Bool?

        public var displayPriority: Int

        public var list: [PaymentModeList]?

        public var addCardEnabled: Bool?

        public var logoUrl: PaymentModeLogo?

        public var logo: String?

        public var saveCard: Bool?

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case name

            case displayName = "display_name"

            case isPayByCardPl = "is_pay_by_card_pl"

            case anonymousEnable = "anonymous_enable"

            case displayPriority = "display_priority"

            case list

            case addCardEnabled = "add_card_enabled"

            case logoUrl = "logo_url"

            case logo

            case saveCard = "save_card"

            case aggregatorName = "aggregator_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String, saveCard: Bool? = nil) {
            self.name = name

            self.displayName = displayName

            self.isPayByCardPl = isPayByCardPl

            self.anonymousEnable = anonymousEnable

            self.displayPriority = displayPriority

            self.list = list

            self.addCardEnabled = addCardEnabled

            self.logoUrl = logoUrl

            self.logo = logo

            self.saveCard = saveCard

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            name = try container.decode(String.self, forKey: .name)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(logo, forKey: .logo)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encode(aggregatorName, forKey: .aggregatorName)
        }
    }
}
