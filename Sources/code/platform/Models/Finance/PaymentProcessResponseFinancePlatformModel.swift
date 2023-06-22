

import Foundation

public extension PlatformClient.Finance {
    /*
         Model: PaymentProcessResponse
         Used By: Finance
     */

    class PaymentProcessResponse: Codable {
        public var message: String?

        public var code: Int?

        public var meta: [String: Any]?

        public var redirectUrl: String?

        public var transactionId: String?

        public enum CodingKeys: String, CodingKey {
            case message

            case code

            case meta

            case redirectUrl = "redirect_url"

            case transactionId = "transaction_id"
        }

        public init(code: Int? = nil, message: String? = nil, meta: [String: Any]? = nil, redirectUrl: String? = nil, transactionId: String? = nil) {
            self.message = message

            self.code = code

            self.meta = meta

            self.redirectUrl = redirectUrl

            self.transactionId = transactionId
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
                code = try container.decode(Int.self, forKey: .code)

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
                transactionId = try container.decode(String.self, forKey: .transactionId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(message, forKey: .message)

            try? container.encodeIfPresent(code, forKey: .code)

            try? container.encodeIfPresent(meta, forKey: .meta)

            try? container.encodeIfPresent(redirectUrl, forKey: .redirectUrl)

            try? container.encodeIfPresent(transactionId, forKey: .transactionId)
        }
    }
}
