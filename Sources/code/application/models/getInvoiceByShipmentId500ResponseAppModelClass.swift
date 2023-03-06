

import Foundation
public extension ApplicationClient {
    /*
         Model: getInvoiceByShipmentId500Response
         Used By: Order
     */
    class getInvoiceByShipmentId500Response: Codable {
        public var success: Bool

        public var presignedType: String?

        public enum CodingKeys: String, CodingKey {
            case success

            case presignedType = "presigned_type"
        }

        public init(presignedType: String? = nil, success: Bool) {
            self.success = success

            self.presignedType = presignedType
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            success = try container.decode(Bool.self, forKey: .success)

            do {
                presignedType = try container.decode(String.self, forKey: .presignedType)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(success, forKey: .success)

            try? container.encodeIfPresent(presignedType, forKey: .presignedType)
        }
    }
}
