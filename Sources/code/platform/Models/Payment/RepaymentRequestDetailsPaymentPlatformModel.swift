

import Foundation

public extension PlatformClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorTransactionId: String

        public var aggregator: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var fwdShipmentId: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var outstandingDetailsId: Int

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.fwdShipmentId = fwdShipmentId

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Payment {
    /*
         Model: RepaymentRequestDetails
         Used By: Payment
     */

    class RepaymentRequestDetails: Codable {
        public var aggregatorTransactionId: String

        public var aggregator: String

        public var amount: Double

        public var aggregatorOrderId: String

        public var fwdShipmentId: String

        public var paymentMode: String

        public var merchantOrderId: String

        public var outstandingDetailsId: Int

        public var currentStatus: String

        public var paymentModeIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case aggregatorTransactionId = "aggregator_transaction_id"

            case aggregator

            case amount

            case aggregatorOrderId = "aggregator_order_id"

            case fwdShipmentId = "fwd_shipment_id"

            case paymentMode = "payment_mode"

            case merchantOrderId = "merchant_order_id"

            case outstandingDetailsId = "outstanding_details_id"

            case currentStatus = "current_status"

            case paymentModeIdentifier = "payment_mode_identifier"
        }

        public init(aggregator: String, aggregatorOrderId: String, aggregatorTransactionId: String, amount: Double, currentStatus: String, fwdShipmentId: String, merchantOrderId: String, outstandingDetailsId: Int, paymentMode: String, paymentModeIdentifier: String) {
            self.aggregatorTransactionId = aggregatorTransactionId

            self.aggregator = aggregator

            self.amount = amount

            self.aggregatorOrderId = aggregatorOrderId

            self.fwdShipmentId = fwdShipmentId

            self.paymentMode = paymentMode

            self.merchantOrderId = merchantOrderId

            self.outstandingDetailsId = outstandingDetailsId

            self.currentStatus = currentStatus

            self.paymentModeIdentifier = paymentModeIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            aggregatorTransactionId = try container.decode(String.self, forKey: .aggregatorTransactionId)

            aggregator = try container.decode(String.self, forKey: .aggregator)

            amount = try container.decode(Double.self, forKey: .amount)

            aggregatorOrderId = try container.decode(String.self, forKey: .aggregatorOrderId)

            fwdShipmentId = try container.decode(String.self, forKey: .fwdShipmentId)

            paymentMode = try container.decode(String.self, forKey: .paymentMode)

            merchantOrderId = try container.decode(String.self, forKey: .merchantOrderId)

            outstandingDetailsId = try container.decode(Int.self, forKey: .outstandingDetailsId)

            currentStatus = try container.decode(String.self, forKey: .currentStatus)

            paymentModeIdentifier = try container.decode(String.self, forKey: .paymentModeIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(aggregatorTransactionId, forKey: .aggregatorTransactionId)

            try? container.encodeIfPresent(aggregator, forKey: .aggregator)

            try? container.encodeIfPresent(amount, forKey: .amount)

            try? container.encodeIfPresent(aggregatorOrderId, forKey: .aggregatorOrderId)

            try? container.encodeIfPresent(fwdShipmentId, forKey: .fwdShipmentId)

            try? container.encodeIfPresent(paymentMode, forKey: .paymentMode)

            try? container.encodeIfPresent(merchantOrderId, forKey: .merchantOrderId)

            try? container.encodeIfPresent(outstandingDetailsId, forKey: .outstandingDetailsId)

            try? container.encodeIfPresent(currentStatus, forKey: .currentStatus)

            try? container.encodeIfPresent(paymentModeIdentifier, forKey: .paymentModeIdentifier)
        }
    }
}
