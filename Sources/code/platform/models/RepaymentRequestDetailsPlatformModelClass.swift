

import Foundation
public extension PlatformClient {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var fwdShipmentId: String

        public var outstandingDetailsId: Int

        public var merchantOrderId: String

        public var currentStatus: String

        public var aggregator: String

        public var paymentMode: String

        public var amount: Double

        public var paymentModeIdentifier: String

        public var aggregatorOrderId: String

        public var aggregatorTransactionId: String

        public enum CodingKeys: String, CodingKey {
            case fwdShipmentId = "fwd_shipment_id"

            case outstandingDetailsId = "outstanding_details_id"

            case merchantOrderId = "merchant_order_id"

            case currentStatus = "current_status"

            case aggregator

            case paymentMode = "payment_mode"

            case amount

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorOrderId = "aggregator_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.fwdShipmentId = fwdShipmentId

            self.outstandingDetailsId = outstandingDetailsId

            self.merchantOrderId = merchantOrderId

            self.currentStatus = currentStatus

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.amount = amount

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorOrderId = aggregatorOrderId

            self.aggregatorTransactionId = aggregatorTransactionId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)
        }
    }
}
