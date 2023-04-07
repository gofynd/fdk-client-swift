

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var amountPaid: Double

        public var companyId: Int

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var sku: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var id: String

        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var storeId: Int

        public var itemSize: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case sku

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case storeId = "store_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.sku = sku

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.storeId = storeId

            self.itemSize = itemSize

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

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
        public var amountPaid: Double

        public var companyId: Int

        public var modifiedOn: String

        public var identifier: [String: Any]

        public var affiliateMeta: [String: Any]

        public var transferPrice: Int

        public var sku: String

        public var priceMarked: Double

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var pdfLinks: MarketPlacePdf?

        public var fyndStoreId: String

        public var sellerIdentifier: String

        public var hsnCodeId: String

        public var deliveryCharge: Double

        public var id: String

        public var itemId: Int

        public var priceEffective: Double

        public var quantity: Int

        public var storeId: Int

        public var itemSize: String

        public var avlQty: Int

        public enum CodingKeys: String, CodingKey {
            case amountPaid = "amount_paid"

            case companyId = "company_id"

            case modifiedOn = "modified_on"

            case identifier

            case affiliateMeta = "affiliate_meta"

            case transferPrice = "transfer_price"

            case sku

            case priceMarked = "price_marked"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case pdfLinks = "pdf_links"

            case fyndStoreId = "fynd_store_id"

            case sellerIdentifier = "seller_identifier"

            case hsnCodeId = "hsn_code_id"

            case deliveryCharge = "delivery_charge"

            case id = "_id"

            case itemId = "item_id"

            case priceEffective = "price_effective"

            case quantity

            case storeId = "store_id"

            case itemSize = "item_size"

            case avlQty = "avl_qty"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.amountPaid = amountPaid

            self.companyId = companyId

            self.modifiedOn = modifiedOn

            self.identifier = identifier

            self.affiliateMeta = affiliateMeta

            self.transferPrice = transferPrice

            self.sku = sku

            self.priceMarked = priceMarked

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.pdfLinks = pdfLinks

            self.fyndStoreId = fyndStoreId

            self.sellerIdentifier = sellerIdentifier

            self.hsnCodeId = hsnCodeId

            self.deliveryCharge = deliveryCharge

            self.id = id

            self.itemId = itemId

            self.priceEffective = priceEffective

            self.quantity = quantity

            self.storeId = storeId

            self.itemSize = itemSize

            self.avlQty = avlQty
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            companyId = try container.decode(Int.self, forKey: .companyId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            sku = try container.decode(String.self, forKey: .sku)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            quantity = try container.decode(Int.self, forKey: .quantity)

            storeId = try container.decode(Int.self, forKey: .storeId)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            avlQty = try container.decode(Int.self, forKey: .avlQty)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)
        }
    }
}
