

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var amount: Double

        public var paymentModeIdentifier: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var paymentMode: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case amount

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case paymentMode = "payment_mode"

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.amount = amount

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var merchantOrderId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var amount: Double

        public var paymentModeIdentifier: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var paymentMode: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case merchantOrderId = "merchant_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case amount

            case paymentModeIdentifier = "payment_mode_identifier"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case paymentMode = "payment_mode"

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.merchantOrderId = merchantOrderId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.amount = amount

            self.paymentModeIdentifier = paymentModeIdentifier

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.paymentMode = paymentMode

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            amount = try container.decode(Double.self, forKey: .amount)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
