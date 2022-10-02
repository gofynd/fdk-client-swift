

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var anonymousEnable: Bool?

        public var list: [PaymentModeList]?

        public var aggregatorName: String?

        public var saveCard: Bool?

        public var name: String

        public var displayName: String

        public var isPayByCardPl: Bool?

        public var displayPriority: Int

        public var addCardEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case anonymousEnable = "anonymous_enable"

            case list

            case aggregatorName = "aggregator_name"

            case saveCard = "save_card"

            case name

            case displayName = "display_name"

            case isPayByCardPl = "is_pay_by_card_pl"

            case displayPriority = "display_priority"

            case addCardEnabled = "add_card_enabled"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.anonymousEnable = anonymousEnable

            self.list = list

            self.aggregatorName = aggregatorName

            self.saveCard = saveCard

            self.name = name

            self.displayName = displayName

            self.isPayByCardPl = isPayByCardPl

            self.displayPriority = displayPriority

            self.addCardEnabled = addCardEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
        }
    }
}
