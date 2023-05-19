

import Foundation

public extension PlatformClient.Order {
    /*
         Model: RefundModeInfo
         Used By: Order
     */

    class RefundModeInfo: Codable {
        public var refundModeName: SingleRefundModeInfo?

        public enum CodingKeys: String, CodingKey {
            case refundModeName = "refund_mode_name"
        }

        public init(refundModeName: SingleRefundModeInfo? = nil) {
            self.refundModeName = refundModeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundModeName = try container.decode(SingleRefundModeInfo.self, forKey: .refundModeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundModeName, forKey: .refundModeName)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: RefundModeInfo
         Used By: Order
     */

    class RefundModeInfo: Codable {
        public var refundModeName: SingleRefundModeInfo?

        public enum CodingKeys: String, CodingKey {
            case refundModeName = "refund_mode_name"
        }

        public init(refundModeName: SingleRefundModeInfo? = nil) {
            self.refundModeName = refundModeName
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            do {
                refundModeName = try container.decode(SingleRefundModeInfo.self, forKey: .refundModeName)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(refundModeName, forKey: .refundModeName)
        }
    }
}
