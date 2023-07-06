

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var fwdShipmentId: String

        public var amount: Double

        public var merchantOrderId: String

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var outstandingDetailsId: Int

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case merchantOrderId = "merchant_order_id"

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

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
        public var fwdShipmentId: String

        public var amount: Double

        public var merchantOrderId: String

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var aggregatorOrderId: String

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public var outstandingDetailsId: Int

        public var aggregator: String

        public enum CodingKeys: String, CodingKey {
            case fwdShipmentId = "fwd_shipment_id"

            case amount

            case merchantOrderId = "merchant_order_id"

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregatorOrderId = "aggregator_order_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"

            case outstandingDetailsId = "outstanding_details_id"

            case aggregator
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.fwdShipmentId = fwdShipmentId

            self.amount = amount

            self.merchantOrderId = merchantOrderId

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregatorOrderId = aggregatorOrderId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier

            self.outstandingDetailsId = outstandingDetailsId

            self.aggregator = aggregator
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            amount = try container.decode(Double.self, forKey: .amount)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            aggregator = try container.decode(String.self, forKey: .aggregator)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)
        }
    }
}
