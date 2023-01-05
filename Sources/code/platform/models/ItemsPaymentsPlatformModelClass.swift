

import Foundation
public extension PlatformClient {
    /*
         Model: ItemsPayments
         Used By: Order
     */

    class ItemsPayments: Codable {
        public var displayPriority: Int?

        public var id: Int?

        public var isActive: Bool?

        public var displayName: String?

        public var logo: String?

        public var paymentIdentifier: String?

        public var sourceNickname: String?

        public var mode: String?

        public var source: String?

        public enum CodingKeys: String, CodingKey {
            case displayPriority = "display_priority"

            case id

            case isActive = "is_active"

            case displayName = "display_name"

            case logo

            case paymentIdentifier = "payment_identifier"

            case sourceNickname = "source_nickname"

            case mode

            case source
        }

        public init(displayName: String? = nil, displayPriority: Int? = nil, id: Int? = nil, isActive: Bool? = nil, logo: String? = nil, mode: String? = nil, paymentIdentifier: String? = nil, source: String? = nil, sourceNickname: String? = nil) {
            self.displayPriority = displayPriority

            self.id = id

            self.isActive = isActive

            self.displayName = displayName

            self.logo = logo

            self.paymentIdentifier = paymentIdentifier

            self.sourceNickname = sourceNickname

            self.mode = mode

            self.source = source
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                displayPriority = try container.decode(Int.self, forKey: .displayPriority)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                id = try container.decode(Int.self, forKey: .id)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                isActive = try container.decode(Bool.self, forKey: .isActive)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                displayName = try container.decode(String.self, forKey: .displayName)

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
                paymentIdentifier = try container.decode(String.self, forKey: .paymentIdentifier)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                sourceNickname = try container.decode(String.self, forKey: .sourceNickname)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mode = try container.decode(String.self, forKey: .mode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                source = try container.decode(String.self, forKey: .source)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(displayPriority, forKey: .displayPriority)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(isActive, forKey: .isActive)

            try? container.encodeIfPresent(displayName, forKey: .displayName)

            try? container.encodeIfPresent(logo, forKey: .logo)

            try? container.encodeIfPresent(paymentIdentifier, forKey: .paymentIdentifier)

            try? container.encodeIfPresent(sourceNickname, forKey: .sourceNickname)

            try? container.encodeIfPresent(mode, forKey: .mode)

            try? container.encodeIfPresent(source, forKey: .source)
        }
    }
}
