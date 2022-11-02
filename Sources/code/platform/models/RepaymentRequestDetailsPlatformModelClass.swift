

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var aggregator: String

        public var aggregatorTransactionId: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var amount: Double

        public var merchantOrderId: String

        public var aggregatorOrderId: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case aggregator

            case aggregatorTransactionId = "aggregator_transaction_id"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case amount

            case merchantOrderId = "merchant_order_id"

            case aggregatorOrderId = "aggregator_order_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator

            self.aggregatorTransactionId = aggregatorTransactionId

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.aggregatorOrderId = aggregatorOrderId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amount = try container.decode(Double.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)
        }
    }
}
