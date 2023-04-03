

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public var amount: Double

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case amount

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.amount = amount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var paymentModeIdentifier: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var aggregatorOrderId: String

        public var outstandingDetailsId: Int

        public var amount: Double

        public var aggregatorTransactionId: String

        public var fwdShipmentId: String

        public var currentStatus: String

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case paymentModeIdentifier = "payment_mode_identifier"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case aggregatorOrderId = "aggregator_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case amount

            case aggregatorTransactionId = "aggregator_transaction_id"

            case fwdShipmentId = "fwd_shipment_id"

            case currentStatus = "current_status"

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.paymentModeIdentifier = paymentModeIdentifier

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.aggregatorOrderId = aggregatorOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.amount = amount

            self.aggregatorTransactionId = aggregatorTransactionId

            self.fwdShipmentId = fwdShipmentId

            self.currentStatus = currentStatus

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
