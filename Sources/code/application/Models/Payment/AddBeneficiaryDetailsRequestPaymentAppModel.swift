

import Foundation
public extension ApplicationClient.Payment {
    /*
         Model: AddBeneficiaryDetailsRequest
         Used By: Payment
     */
    class AddBeneficiaryDetailsRequest: Codable {
        public var orderId: String

        public var otp: String?

        public var requestId: String?

        public var delights: Bool

        public var shipmentId: String

        public var details: BeneficiaryModeDetails

        public var transferMode: String

        public enum CodingKeys: String, CodingKey {
            case orderId = "order_id"

            case otp

            case requestId = "request_id"

            case delights

            case shipmentId = "shipment_id"

            case details

            case transferMode = "transfer_mode"
        }

        public init(delights: Bool, details: BeneficiaryModeDetails, orderId: String, otp: String? = nil, requestId: String? = nil, shipmentId: String, transferMode: String) {
            self.orderId = orderId

            self.otp = otp

            self.requestId = requestId

            self.delights = delights

            self.shipmentId = shipmentId

            self.details = details

            self.transferMode = transferMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            orderId = try container.decode(String.self, forKey: .orderId)

            do {
                otp = try container.decode(String.self, forKey: .otp)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            do {
                requestId = try container.decode(String.self, forKey: .requestId)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            delights = try container.decode(Bool.self, forKey: .delights)

            shipmentId = try container.decode(String.self, forKey: .shipmentId)

            details = try container.decode(BeneficiaryModeDetails.self, forKey: .details)

            transferMode = try container.decode(String.self, forKey: .transferMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(orderId, forKey: .orderId)

            try? container.encodeIfPresent(otp, forKey: .otp)

            try? container.encodeIfPresent(requestId, forKey: .requestId)

            try? container.encodeIfPresent(delights, forKey: .delights)

            try? container.encodeIfPresent(shipmentId, forKey: .shipmentId)

            try? container.encodeIfPresent(details, forKey: .details)

            try? container.encodeIfPresent(transferMode, forKey: .transferMode)
        }
    }
}