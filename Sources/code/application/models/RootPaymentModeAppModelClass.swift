

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var aggregatorName: String?

        public var displayPriority: Int

        public var saveCard: Bool?

        public var list: [PaymentModeList]?

        public var addCardEnabled: Bool?

        public var displayName: String

        public var anonymousEnable: Bool?

        public var name: String

        public var isPayByCardPl: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case displayPriority = "display_priority"

            case saveCard = "save_card"

            case list

            case addCardEnabled = "add_card_enabled"

            case displayName = "display_name"

            case anonymousEnable = "anonymous_enable"

            case name

            case isPayByCardPl = "is_pay_by_card_pl"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.aggregatorName = aggregatorName

            self.displayPriority = displayPriority

            self.saveCard = saveCard

            self.list = list

            self.addCardEnabled = addCardEnabled

            self.displayName = displayName

            self.anonymousEnable = anonymousEnable

            self.name = name

            self.isPayByCardPl = isPayByCardPl
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                saveCard = try container.decode(Bool.self, forKey: .saveCard)

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
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                isPayByCardPl = try container.decode(Bool.self, forKey: .isPayByCardPl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)
        }
    }
}
