

import Foundation

public extension PlatformClient.Order {
    /*
         Model: VerifyOtpResponseData
         Used By: Order
     */

    class VerifyOtpResponseData: Codable {
        public var fyndOrderId: String?

        public var mobile: String?

        public var countryCode: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case mobile

            case countryCode = "country_code"

            case message
        }

        public init(countryCode: String? = nil, fyndOrderId: String? = nil, message: String? = nil, mobile: String? = nil) {
            self.fyndOrderId = fyndOrderId

            self.mobile = mobile

            self.countryCode = countryCode

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: VerifyOtpResponseData
         Used By: Order
     */

    class VerifyOtpResponseData: Codable {
        public var fyndOrderId: String?

        public var mobile: String?

        public var countryCode: String?

        public var message: String?

        public enum CodingKeys: String, CodingKey {
            case fyndOrderId = "fynd_order_id"

            case mobile

            case countryCode = "country_code"

            case message
        }

        public init(countryCode: String? = nil, fyndOrderId: String? = nil, message: String? = nil, mobile: String? = nil) {
            self.fyndOrderId = fyndOrderId

            self.mobile = mobile

            self.countryCode = countryCode

            self.message = message
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                fyndOrderId = try container.decode(String.self, forKey: .fyndOrderId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                mobile = try container.decode(String.self, forKey: .mobile)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                countryCode = try container.decode(String.self, forKey: .countryCode)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fyndOrderId, forKey: .fyndOrderId)

            try? container.encodeIfPresent(mobile, forKey: .mobile)

            try? container.encodeIfPresent(countryCode, forKey: .countryCode)

            try? container.encodeIfPresent(message, forKey: .message)
        }
    }
}
