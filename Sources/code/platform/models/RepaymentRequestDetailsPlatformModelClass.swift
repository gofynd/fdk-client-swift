

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var paymentModeIdentifier: String

        public var amount: Int

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Int, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Int.self, forKey: .amount)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)
        }
    }
}
