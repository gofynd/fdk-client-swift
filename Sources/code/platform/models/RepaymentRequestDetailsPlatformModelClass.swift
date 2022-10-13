

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var amount: Int

        public var merchantOrderId: String

        public var currentStatus: String

        public var aggregator: String

        public var aggregatorOrderId: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case amount

            case merchantOrderId = "merchant_order_id"

            case currentStatus = "current_status"

            case aggregator

            case aggregatorOrderId = "aggregator_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Int, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.currentStatus = currentStatus

            self.aggregator = aggregator

            self.aggregatorOrderId = aggregatorOrderId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            amount = try container.decode(Int.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)
        }
    }
}
