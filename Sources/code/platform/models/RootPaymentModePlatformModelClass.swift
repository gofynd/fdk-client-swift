

import Foundation
public extension PlatformClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */

    class RootPaymentMode: Codable {
        public var aggregatorName: String?

        public var list: [PaymentModeList]?

        public var logo: String?

        public var anonymousEnable: Bool?

        public var name: String

        public var logoUrl: PaymentModeLogo?

        public var displayName: String

        public var displayPriority: Int

        public var addCardEnabled: Bool?

        public enum CodingKeys: String, CodingKey {
            case aggregatorName = "aggregator_name"

            case list

            case logo

            case anonymousEnable = "anonymous_enable"

            case name

            case logoUrl = "logo_url"

            case displayName = "display_name"

            case displayPriority = "display_priority"

            case addCardEnabled = "add_card_enabled"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.aggregatorName = aggregatorName

            self.list = list

            self.logo = logo

            self.anonymousEnable = anonymousEnable

            self.name = name

            self.logoUrl = logoUrl

            self.displayName = displayName

            self.displayPriority = displayPriority

            self.addCardEnabled = addCardEnabled
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

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

            do {
                logo = try container.decode(String.self, forKey: .logo)

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

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayName = try container.decode(String.self, forKey: .displayName)

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

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(logo, forKey: .logo)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)
        }
    }
}
