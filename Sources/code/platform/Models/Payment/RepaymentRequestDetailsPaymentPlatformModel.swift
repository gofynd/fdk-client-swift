

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var amount: Double

        public var aggregator: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var currentStatus: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case aggregator

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.amount = amount

            self.aggregator = aggregator

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var amount: Double

        public var aggregator: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public var merchantOrderId: String

        public var aggregatorTransactionId: String

        public var currentStatus: String

        public var paymentMode: String

        public var paymentModeIdentifier: String

        public var fwdShipmentId: String

        public enum CodingKeys: String, CodingKey {
            case amount

            case aggregator

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case merchantOrderId = "merchant_order_id"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case currentStatus = "current_status"

            case paymentMode = "payment_mode"

            case paymentModeIdentifier = "payment_mode_identifier"

            case fwdShipmentId = "fwd_shipment_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.amount = amount

            self.aggregator = aggregator

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.merchantOrderId = merchantOrderId

            self.aggregatorTransactionId = aggregatorTransactionId

            self.currentStatus = currentStatus

            self.paymentMode = paymentMode

            self.paymentModeIdentifier = paymentModeIdentifier

            self.fwdShipmentId = fwdShipmentId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)
        }
    }
}
