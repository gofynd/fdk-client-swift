

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentModeIdentifier: String

        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var paymentMode: String

        public var amount: Int

        public var aggregatorOrderId: String

        public var aggregator: String

        public var currentStatus: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentMode = "payment_mode"

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case aggregator

            case currentStatus = "current_status"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Int, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.paymentMode = paymentMode

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.aggregatorTransactionId = aggregatorTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amount = try container.decode(Int.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}
