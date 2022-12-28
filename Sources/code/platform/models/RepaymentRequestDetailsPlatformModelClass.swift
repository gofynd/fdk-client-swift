

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorOrderId: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public var paymentModeIdentifier: String

        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public var aggregator: String

        public var paymentMode: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case outstandingDetailsId = "outstanding_details_id"

            case aggregator

            case paymentMode = "payment_mode"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator

            self.paymentMode = paymentMode
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)
        }
    }
}
