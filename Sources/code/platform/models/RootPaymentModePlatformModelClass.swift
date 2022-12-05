

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var isPayByCardPl: Bool?

        public var addCardEnabled: Bool?

        public var saveCard: Bool?

        public var name: String

        public var anonymousEnable: Bool?

        public var aggregatorName: String?

        public var displayName: String

        public var list: [PaymentModeList]?

        public var displayPriority: Int

        public enum CodingKeys: String, CodingKey {
            case isPayByCardPl = "is_pay_by_card_pl"

            case addCardEnabled = "add_card_enabled"

            case saveCard = "save_card"

            case name

            case anonymousEnable = "anonymous_enable"

            case aggregatorName = "aggregator_name"

            case displayName = "display_name"

            case list

            case displayPriority = "display_priority"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.isPayByCardPl = isPayByCardPl

            self.addCardEnabled = addCardEnabled

            self.saveCard = saveCard

            self.name = name

            self.anonymousEnable = anonymousEnable

            self.aggregatorName = aggregatorName

            self.displayName = displayName

            self.list = list

            self.displayPriority = displayPriority
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

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
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)
        }
    }
}
