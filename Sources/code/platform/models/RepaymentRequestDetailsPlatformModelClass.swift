

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var amount: Double

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var outstandingDetailsId: Int

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public var merchantOrderId: String

        public var aggregator: String

        public var currentStatus: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"

            case merchantOrderId = "merchant_order_id"

            case aggregator

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.amount = amount

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId

            self.merchantOrderId = merchantOrderId

            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
