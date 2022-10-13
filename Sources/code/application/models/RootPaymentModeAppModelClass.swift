

import Foundation
public extension ApplicationClient {
    /*
         Model: RootPaymentMode
         Used By: Payment
     */
    class RootPaymentMode: Codable {
        public var anonymousEnable: Bool?

        public var aggregatorName: String?

        public var name: String

        public var logo: String?

        public var logoUrl: PaymentModeLogo?

        public var addCardEnabled: Bool?

        public var displayPriority: Int

        public var displayName: String

        public var list: [PaymentModeList]?

        public enum CodingKeys: String, CodingKey {
            case anonymousEnable = "anonymous_enable"

            case aggregatorName = "aggregator_name"

            case name

            case logo

            case logoUrl = "logo_url"

            case addCardEnabled = "add_card_enabled"

            case displayPriority = "display_priority"

            case displayName = "display_name"

            case list
        }

        public init(addCardEnabled: Bool? = nil, aggregatorName: String? = nil, anonymousEnable: Bool? = nil, displayName: String, displayPriority: Int, list: [PaymentModeList]? = nil, logo: String? = nil, logoUrl: PaymentModeLogo? = nil, name: String) {
            self.anonymousEnable = anonymousEnable

            self.aggregatorName = aggregatorName

            self.name = name

            self.logo = logo

            self.logoUrl = logoUrl

            self.addCardEnabled = addCardEnabled

            self.displayPriority = displayPriority

            self.displayName = displayName

            self.list = list
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
                aggregatorName = try container.decode(String.self, forKey: .aggregatorName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            name = try container.decode(String.self, forKey: .name)

            do {
                logo = try container.decode(String.self, forKey: .logo)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                logoUrl = try container.decode(PaymentModeLogo.self, forKey: .logoUrl)

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

            displayName = try container.decode(String.self, forKey: .displayName)

            do {
                list = try container.decode([PaymentModeList].self, forKey: .list)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encode(anonymousEnable, forKey: .anonymousEnable)

            try? container.encode(aggregatorName, forKey: .aggregatorName)

            try? container.encodeIfPresent(name, forKey: .name)

            try? container.encode(logo, forKey: .logo)

            try? container.encode(logoUrl, forKey: .logoUrl)

            try? container.encode(addCardEnabled, forKey: .addCardEnabled)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(list, forKey: .list)
        }
    }
}
