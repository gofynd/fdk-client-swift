

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var isPayByCardPl: Bool?

        public var list: [PaymentModeList]?

        public var anonymousEnable: Bool?

        public var displayName: String

        public var name: String

        public var displayPriority: Int

        public var aggregatorName: String?

        public var addCardEnabled: Bool?

        public var saveCard: Bool?

        public enum CodingKeys: String, CodingKey {
            case isPayByCardPl = "is_pay_by_card_pl"

            case list

            case anonymousEnable = "anonymous_enable"

            case displayName = "display_name"

            case name

            case displayPriority = "display_priority"

            case aggregatorName = "aggregator_name"

            case addCardEnabled = "add_card_enabled"

            case saveCard = "save_card"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, isPayByCardPl: Bool? = nil, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.isPayByCardPl = isPayByCardPl

            self.list = list

            self.anonymousEnable = anonymousEnable

            self.displayName = displayName

            self.name = name

            self.displayPriority = displayPriority

            self.aggregatorName = aggregatorName

            self.addCardEnabled = addCardEnabled

            self.saveCard = saveCard
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
                list = try container.decode([PaymentModeList].self, forKey: .list)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(isPayByCardPl, forKey: .isPayByCardPl)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(saveCard, forKey: .saveCard)
        }
    }
}
