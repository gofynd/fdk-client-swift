

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var displayName: String

        public var addCardEnabled: Bool?

        public var list: [PaymentModeList]?

        public var displayPriority: Int

        public var name: String

        public var aggregatorName: String?

        public var anonymousEnable: Bool?

        public enum CodingKeys: String, CodingKey {
            case displayName = "display_name"

            case addCardEnabled = "add_card_enabled"

            case list

            case displayPriority = "display_priority"

            case name

            case aggregatorName = "aggregator_name"

            case anonymousEnable = "anonymous_enable"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, name: String) {
            self.displayName = displayName

            self.addCardEnabled = addCardEnabled

            self.list = list

            self.displayPriority = displayPriority

            self.name = name

            self.aggregatorName = aggregatorName

            self.anonymousEnable = anonymousEnable
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

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

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            name = try container.decode(String.self, forKey: .name)

            do {
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

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
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)
        }
    }
}
