

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var addCardEnabled: Bool?

        public var anonymousEnable: Bool?

        public var name: String

        public var displayPriority: Int

        public var displayName: String

        public var list: [PaymentModeList]?

        public var saveCard: Bool?

        public var aggregatorName: String?

        public enum CodingKeys: String, CodingKey {
            case addCardEnabled = "add_card_enabled"

            case anonymousEnable = "anonymous_enable"

            case name

            case displayPriority = "display_priority"

            case displayName = "display_name"

            case list

            case saveCard = "save_card"

            case aggregatorName = "aggregator_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, name: String, saveCard: Bool? = nil) {
            self.addCardEnabled = addCardEnabled

            self.anonymousEnable = anonymousEnable

            self.name = name

            self.displayPriority = displayPriority

            self.displayName = displayName

            self.list = list

            self.saveCard = saveCard

            self.aggregatorName = aggregatorName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

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

            name = try container.decode(String.self, forKey: .name)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

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

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(saveCard, forKey: .saveCard)

            try? container.encode(aggregatorName, forKey: .aggregatorName)
        }
    }
}
