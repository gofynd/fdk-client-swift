

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregator: String

        public var aggregatorTransactionId: String

        public var merchantOrderId: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var aggregatorOrderId: String

        public var fwdShipmentId: String

        public var amount: Double

        public var currentStatus: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregator

            case aggregatorTransactionId = "aggregator_transaction_id"

            case merchantOrderId = "merchant_order_id"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorOrderId = "aggregator_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case currentStatus = "current_status"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregator = aggregator

            self.aggregatorTransactionId = aggregatorTransactionId

            self.merchantOrderId = merchantOrderId

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorOrderId = aggregatorOrderId

            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.currentStatus = currentStatus

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
