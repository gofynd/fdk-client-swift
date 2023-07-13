

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: PaymentProcessResponse
         Used By: Finance
     */

    class PaymentProcessResponse: Codable {
        public var message: String?

        public var transactionId: String?

        public var meta: [String: Any]?

        public var redirectUrl: String?

        public var code: Int?

        public enum CodingKeys: String, CodingKey {
            case message

            case transactionId = "transaction_id"

            case meta

            case redirectUrl = "redirect_url"

            case code
        }

        public init(code: Int? = nil, message: String? = nil, meta: [String: Any]? = nil, redirectUrl: String? = nil, transactionId: String? = nil) {
            self.message = message

            self.transactionId = transactionId

            self.meta = meta

            self.redirectUrl = redirectUrl

            self.code = code
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                message = try container.decode(String.self, forKey: .message)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                meta = try container.decode([String: Any].self, forKey: .meta)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                redirectUrl = try container.decode(String.self, forKey: .redirectUrl)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                code = try container.decode(Int.self, forKey: .code)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(transactionId, forKey: .transactionId)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(code, forKey: .code)
        }
    }
}
