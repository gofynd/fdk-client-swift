

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var displayPriority: Int

        public var anonymousEnable: Bool?

        public var addCardEnabled: Bool?

        public var displayName: String

        public var name: String

        public var list: [PaymentModeList]?

        public var isPayByCardPl: Bool?

        public var aggregatorName: String?

        public var saveCard: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayPriority = "display_priority"

            case anonymousEnable = "anonymous_enable"

            case addCardEnabled = "add_card_enabled"

            case displayName = "display_name"

            case name

            case list

            case isPayByCardPl = "is_pay_by_card_pl"

            case aggregatorName = "aggregator_name"

            case saveCard = "save_card"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.displayPriority = displayPriority

            self.anonymousEnable = anonymousEnable

            self.addCardEnabled = addCardEnabled

            self.displayName = displayName

            self.name = name

            self.list = list

            self.isPayByCardPl = isPayByCardPl

            self.aggregatorName = aggregatorName

            self.saveCard = saveCard
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(saveCard, forKey: .saveCard)
        }
    }
}
