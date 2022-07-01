

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var anonymousEnable: Bool?

        public var addCardEnabled: Bool?

        public var displayPriority: Int

        public var logoUrl: PaymentModeLogo?

        public var aggregatorName: String?

        public var name: String

        public var list: [PaymentModeList]?

        public var logo: String?

        public var displayName: String

        public enum CodingKeys: String, CodingKey {
            case anonymousEnable = "anonymous_enable"

            case addCardEnabled = "add_card_enabled"

            case displayPriority = "display_priority"

            case logoUrl = "logo_url"

            case aggregatorName = "aggregator_name"

            case name

            case list

            case logo

            case displayName = "display_name"
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.anonymousEnable = anonymousEnable

            self.addCardEnabled = addCardEnabled

            self.displayPriority = displayPriority

            self.logoUrl = logoUrl

            self.aggregatorName = aggregatorName

            self.name = name

            self.list = list

            self.logo = logo

            self.displayName = displayName
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
                addCardEnabled = try container.decode(Bool.self, forKey: .addCardEnabled)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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

            name = try container.decode(String.self, forKey: .name)

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

            displayName = try container.decode(String.self, forKey: .displayName)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encodeIfPresent(list, forKey: .list)

            try? container.encode(logo, forKey: .logo)

            try? container.encodeIfPresent(displayName, forKey: .displayName)
        }
    }
}
