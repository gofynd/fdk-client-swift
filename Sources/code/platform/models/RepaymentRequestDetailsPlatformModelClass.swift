

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentMode: String

        public var aggregator: String

        public var fwdShipmentId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public var merchantOrderId: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var aggregatorTransactionId: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case paymentMode = "payment_mode"

            case aggregator

            case fwdShipmentId = "fwd_shipment_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"

            case merchantOrderId = "merchant_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case aggregatorTransactionId = "aggregator_transaction_id"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentMode = paymentMode

            self.aggregator = aggregator

            self.fwdShipmentId = fwdShipmentId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus

            self.merchantOrderId = merchantOrderId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
