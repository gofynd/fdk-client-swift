

import Foundation
public extension ApplicationClient {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var delights: Bool

        public var details: BeneficiaryModeDetails

        public var shipmentId: String

        public var otp: String?

        public var orderId: String

        public var requestId: String?

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case delights

            case details

            case shipmentId = "shipment_id"

            case otp

            case orderId = "order_id"

            case requestId = "request_id"

            case transferMode = "transfer_mode"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.delights = delights

            self.details = details

            self.shipmentId = shipmentId

            self.otp = otp

            self.orderId = orderId

            self.requestId = requestId

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            delights = try container.decode(Bool.self, forKey: .delights)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}
