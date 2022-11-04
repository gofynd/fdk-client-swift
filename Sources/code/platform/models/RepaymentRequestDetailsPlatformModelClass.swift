

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var outstandingDetailsId: Int

        public var paymentMode: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public var aggregator: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case outstandingDetailsId = "outstanding_details_id"

            case paymentMode = "payment_mode"

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregator

            case currentStatus = "current_status"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.outstandingDetailsId = outstandingDetailsId

            self.paymentMode = paymentMode

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId

            self.aggregator = aggregator

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
