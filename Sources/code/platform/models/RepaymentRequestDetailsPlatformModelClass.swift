

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var outstandingDetailsId: Int

        public var aggregatorOrderId: String

        public var paymentMode: String

        public var currentStatus: String

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public var amount: Double

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case outstandingDetailsId = "outstanding_details_id"

            case aggregatorOrderId = "aggregator_order_id"

            case paymentMode = "payment_mode"

            case currentStatus = "current_status"

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.outstandingDetailsId = outstandingDetailsId

            self.aggregatorOrderId = aggregatorOrderId

            self.paymentMode = paymentMode

            self.currentStatus = currentStatus

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
