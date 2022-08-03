

import Foundation
public extension PlatformClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */

    class AddBeneficiaryDetailsRequest: Codable {
        public var shipmentId: String

        public var otp: String?

        public var details: BeneficiaryModeDetails

        public var requestId: String?

        public var delights: Bool

        public var transferMode: String

        public var orderId: String

        public enum CodingKeys: String, CodingKey {
            case shipmentId = "shipment_id"

            case otp

            case details

            case requestId = "request_id"

            case delights

            case transferMode = "transfer_mode"

            case orderId = "order_id"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.shipmentId = shipmentId

            self.otp = otp

            self.details = details

            self.requestId = requestId

            self.delights = delights

            self.transferMode = transferMode

            self.orderId = orderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            delights = try container.decode(Bool.self, forKey: .delights)

            transferMode = try container.decode(String.self, forKey: .transferMode)

            orderId = try container.decode(String.self, forKey: .orderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)

            try? container.encodeIfPresent(orderId, forKey: .orderId)
        }
    }
}
