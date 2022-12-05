

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var merchantOrderId: String

        public var outstandingDetailsId: Int

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var currentStatus: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.merchantOrderId = merchantOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
