

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var itemSize: String

        public var discount: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var modifiedOn: String

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var itemId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var priceMarked: Double

        public var id: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case priceMarked = "price_marked"

            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var unitPrice: Double

        public var itemSize: String

        public var discount: Double

        public var affiliateStoreId: String

        public var storeId: Int

        public var modifiedOn: String

        public var sku: String

        public var identifier: [String: Any]

        public var hsnCodeId: String

        public var itemId: Int

        public var priceEffective: Double

        public var amountPaid: Double

        public var pdfLinks: MarketPlacePdf?

        public var quantity: Int

        public var priceMarked: Double

        public var id: String

        public var transferPrice: Int

        public var sellerIdentifier: String

        public var fyndStoreId: String

        public var deliveryCharge: Double

        public var companyId: Int

        public var affiliateMeta: [String: Any]

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case unitPrice = "unit_price"

            case itemSize = "item_size"

            case discount

            case affiliateStoreId = "affiliate_store_id"

            case storeId = "store_id"

            case modifiedOn = "modified_on"

            case sku

            case identifier

            case hsnCodeId = "hsn_code_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case amountPaid = "amount_paid"

            case pdfLinks = "pdf_links"

            case quantity

            case priceMarked = "price_marked"

            case id = "_id"

            case transferPrice = "transfer_price"

            case sellerIdentifier = "seller_identifier"

            case fyndStoreId = "fynd_store_id"

            case deliveryCharge = "delivery_charge"

            case companyId = "company_id"

            case affiliateMeta = "affiliate_meta"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.unitPrice = unitPrice

            self.itemSize = itemSize

            self.discount = discount

            self.affiliateStoreId = affiliateStoreId

            self.storeId = storeId

            self.modifiedOn = modifiedOn

            self.sku = sku

            self.identifier = identifier

            self.hsnCodeId = hsnCodeId

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.amountPaid = amountPaid

            self.pdfLinks = pdfLinks

            self.quantity = quantity

            self.priceMarked = priceMarked

            self.id = id

            self.transferPrice = transferPrice

            self.sellerIdentifier = sellerIdentifier

            self.fyndStoreId = fyndStoreId

            self.deliveryCharge = deliveryCharge

            self.companyId = companyId

            self.affiliateMeta = affiliateMeta

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            discount = try container.decode(Double.self, forKey: .discount)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            sku = try container.decode(String.self, forKey: .sku)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            id = try container.decode(String.self, forKey: .id)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            companyId = try container.decode(Int.self, forKey: .companyId)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
