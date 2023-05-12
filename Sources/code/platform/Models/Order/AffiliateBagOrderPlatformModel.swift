

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public var itemSize: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var id: String

        public var itemId: Int

        public var hsnCodeId: String

        public var modifiedOn: String

        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case sku

            case quantity

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case identifier

            case id = "_id"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.id = id

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var fyndStoreId: String

        public var transferPrice: Int

        public var priceEffective: Double

        public var deliveryCharge: Double

        public var priceMarked: Double

        public var sku: String

        public var quantity: Int

        public var itemSize: String

        public var amountPaid: Double

        public var identifier: [String: Any]

        public var id: String

        public var itemId: Int

        public var hsnCodeId: String

        public var modifiedOn: String

        public var avlQty: Int

        public var companyId: Int

        public var unitPrice: Double

        public var affiliateStoreId: String

        public var discount: Double

        public var sellerIdentifier: String

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case fyndStoreId = "fynd_store_id"

            case transferPrice = "transfer_price"

            case priceEffective = "price_effective"

            case deliveryCharge = "delivery_charge"

            case priceMarked = "price_marked"

            case sku

            case quantity

            case itemSize = "item_size"

            case amountPaid = "amount_paid"

            case identifier

            case id = "_id"

            case itemId = "item_id"

            case hsnCodeId = "hsn_code_id"

            case modifiedOn = "modified_on"

            case avlQty = "avl_qty"

            case companyId = "company_id"

            case unitPrice = "unit_price"

            case affiliateStoreId = "affiliate_store_id"

            case discount

            case sellerIdentifier = "seller_identifier"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.fyndStoreId = fyndStoreId

            self.transferPrice = transferPrice

            self.priceEffective = priceEffective

            self.deliveryCharge = deliveryCharge

            self.priceMarked = priceMarked

            self.sku = sku

            self.quantity = quantity

            self.itemSize = itemSize

            self.amountPaid = amountPaid

            self.identifier = identifier

            self.id = id

            self.itemId = itemId

            self.hsnCodeId = hsnCodeId

            self.modifiedOn = modifiedOn

            self.avlQty = avlQty

            self.companyId = companyId

            self.unitPrice = unitPrice

            self.affiliateStoreId = affiliateStoreId

            self.discount = discount

            self.sellerIdentifier = sellerIdentifier

            self.storeId = storeId

            self.pdfLinks = pdfLinks
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            sku = try container.decode(String.self, forKey: .sku)

            quantity = try container.decode(Int.self, forKey: .quantity)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            id = try container.decode(String.self, forKey: .id)

            itemId = try container.decode(Int.self, forKey: .itemId)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            companyId = try container.decode(Int.self, forKey: .companyId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            discount = try container.decode(Double.self, forKey: .discount)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)
        }
    }
}
