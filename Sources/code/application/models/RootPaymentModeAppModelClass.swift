import Foundation

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var displayPriority: Int

        public var addCardEnabled: Bool?

        public var name: String

        public var aggregatorName: String?

        public var list: [PaymentModeList]?

        public var displayName: String

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayPriority = "display_priority"

            case addCardEnabled = "add_card_enabled"

            case name

            case aggregatorName = "aggregator_name"

            case list

            case displayName = "display_name"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, name: String) {
            self.displayPriority = displayPriority

            self.addCardEnabled = addCardEnabled

            self.name = name

            self.aggregatorName = aggregatorName

            self.list = list

            self.displayName = displayName

            self.anonymousEnable = anonymousEnable
        }

        public func duplicate() -> RootPaymentMode {
            let dict = self.dictionary!
            let copy = RootPaymentMode(dictionary: dict)!
            return copy
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                anonymousEnable = try container.decode(Bool.self, forKey: .anonymousEnable)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }
}
