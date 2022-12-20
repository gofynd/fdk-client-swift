

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var anonymousEnable: Bool?

        public var name: String

        public var list: [PaymentModeList]?

        public var displayName: String

        public var aggregatorName: String?

        public var logoUrl: PaymentModeLogo?

        public var addCardEnabled: Bool?

        public var isPayByCardPl: Bool?

        public var saveCard: Bool?

        public var displayPriority: Int

        public var logo: String?

        public enum CodingKeys: String, CodingKey {
            case anonymousEnable = "anonymous_enable"

            case name

            case list

            case displayName = "display_name"

            case aggregatorName = "aggregator_name"

            case logoUrl = "logo_url"

            case addCardEnabled = "add_card_enabled"

            case isPayByCardPl = "is_pay_by_card_pl"

            case saveCard = "save_card"

            case displayPriority = "display_priority"

            case logo
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String, saveCard: Bool? = nil) {
            self.anonymousEnable = anonymousEnable

            self.name = name

            self.list = list

            self.displayName = displayName

            self.aggregatorName = aggregatorName

            self.logoUrl = logoUrl

            self.addCardEnabled = addCardEnabled

            self.isPayByCardPl = isPayByCardPl

            self.saveCard = saveCard

            self.displayPriority = displayPriority

            self.logo = logo
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

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

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(logo, forKey: .logo)
        }
    }
}
