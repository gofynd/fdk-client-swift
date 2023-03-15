

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var avlQty: Int

        public var discount: Double

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var fyndStoreId: String

        public var id: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case sku

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case discount

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.avlQty = avlQty

            self.discount = discount

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var sku: String

        public var unitPrice: Double

        public var transferPrice: Int

        public var hsnCodeId: String

        public var pdfLinks: MarketPlacePdf?

        public var priceMarked: Double

        public var amountPaid: Double

        public var sellerIdentifier: String

        public var companyId: Int

        public var deliveryCharge: Double

        public var quantity: Int

        public var affiliateMeta: [String: Any]

        public var storeId: Int

        public var avlQty: Int

        public var discount: Double

        public var itemSize: String

        public var priceEffective: Double

        public var modifiedOn: String

        public var itemId: Int

        public var fyndStoreId: String

        public var id: String

        public var affiliateStoreId: String

        public var identifier: [String: Any]

        public enum CodingKeys: String, CodingKey {
            case sku

            case unitPrice = "unit_price"

            case transferPrice = "transfer_price"

            case hsnCodeId = "hsn_code_id"

            case pdfLinks = "pdf_links"

            case priceMarked = "price_marked"

            case amountPaid = "amount_paid"

            case sellerIdentifier = "seller_identifier"

            case companyId = "company_id"

            case deliveryCharge = "delivery_charge"

            case quantity

            case affiliateMeta = "affiliate_meta"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case discount

            case itemSize = "item_size"

            case priceEffective = "price_effective"

            case modifiedOn = "modified_on"

            case itemId = "item_id"

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case affiliateStoreId = "affiliate_store_id"

            case identifier
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.sku = sku

            self.unitPrice = unitPrice

            self.transferPrice = transferPrice

            self.hsnCodeId = hsnCodeId

            self.pdfLinks = pdfLinks

            self.priceMarked = priceMarked

            self.amountPaid = amountPaid

            self.sellerIdentifier = sellerIdentifier

            self.companyId = companyId

            self.deliveryCharge = deliveryCharge

            self.quantity = quantity

            self.affiliateMeta = affiliateMeta

            self.storeId = storeId

            self.avlQty = avlQty

            self.discount = discount

            self.itemSize = itemSize

            self.priceEffective = priceEffective

            self.modifiedOn = modifiedOn

            self.itemId = itemId

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.affiliateStoreId = affiliateStoreId

            self.identifier = identifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            sku = try container.decode(String.self, forKey: .sku)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            companyId = try container.decode(Int.self, forKey: .companyId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            quantity = try container.decode(Int.self, forKey: .quantity)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            discount = try container.decode(Double.self, forKey: .discount)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemId = try container.decode(Int.self, forKey: .itemId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)
        }
    }
}
