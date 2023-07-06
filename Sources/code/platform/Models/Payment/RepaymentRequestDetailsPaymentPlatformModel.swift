

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorOrderId: String

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var currentStatus: String

        public var fwdShipmentId: String

        public var merchantOrderId: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case currentStatus = "current_status"

            case fwdShipmentId = "fwd_shipment_id"

            case merchantOrderId = "merchant_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.fwdShipmentId = fwdShipmentId

            self.merchantOrderId = merchantOrderId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

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
        public var aggregatorOrderId: String

        public var paymentMode: String

        public var aggregatorTransactionId: String

        public var aggregator: String

        public var currentStatus: String

        public var fwdShipmentId: String

        public var merchantOrderId: String

        public var paymentModeIdentifier: String

        public var amount: Double

        public var outstandingDetailsId: Int

        public enum CodingKeys: String, CodingKey {
            case aggregatorOrderId = "aggregator_order_id"

            case paymentMode = "payment_mode"

            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case currentStatus = "current_status"

            case fwdShipmentId = "fwd_shipment_id"

            case merchantOrderId = "merchant_order_id"

            case paymentModeIdentifier = "payment_mode_identifier"

            case amount

            case outstandingDetailsId = "outstanding_details_id"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorOrderId = aggregatorOrderId

            self.paymentMode = paymentMode

            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.currentStatus = currentStatus

            self.fwdShipmentId = fwdShipmentId

            self.merchantOrderId = merchantOrderId

            self.paymentModeIdentifier = paymentModeIdentifier

            self.amount = amount

            self.outstandingDetailsId = outstandingDetailsId
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)

            amount = try container.decode(Double.self, forKey: .amount)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)
        }
    }
}
