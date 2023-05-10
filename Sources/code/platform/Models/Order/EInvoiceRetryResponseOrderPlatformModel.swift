

import Foundation

public extension PlatformClient.Order {
    /*
         Model: EInvoiceRetryResponse
         Used By: Order
     */

    class EInvoiceRetryResponse: Codable {
        public var responseData: [EinvoiceResponseData]?

        public enum CodingKeys: String, CodingKey {
            case responseData = "response_data"
        }

        public init(responseData: [EinvoiceResponseData]? = nil) {
            self.responseData = responseData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                responseData = try container.decode([EinvoiceResponseData].self, forKey: .responseData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(responseData, forKey: .responseData)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: EInvoiceRetryResponse
         Used By: Order
     */

    class EInvoiceRetryResponse: Codable {
        public var responseData: [EinvoiceResponseData]?

        public enum CodingKeys: String, CodingKey {
            case responseData = "response_data"
        }

        public init(responseData: [EinvoiceResponseData]? = nil) {
            self.responseData = responseData
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                responseData = try container.decode([EinvoiceResponseData].self, forKey: .responseData)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(responseData, forKey: .responseData)
        }
    }
}
