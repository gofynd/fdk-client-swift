

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var itemId: Int

        public var modifiedOn: String

        public var discount: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var quantity: Int

        public var priceEffective: Double

        public var sku: String

        public var fyndStoreId: String

        public var id: String

        public var itemSize: String

        public var unitPrice: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var companyId: Int

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case identifier

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case discount

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case priceEffective = "price_effective"

            case sku

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var deliveryCharge: Double

        public var identifier: [String: Any]

        public var itemId: Int

        public var modifiedOn: String

        public var discount: Double

        public var priceMarked: Double

        public var affiliateStoreId: String

        public var quantity: Int

        public var priceEffective: Double

        public var sku: String

        public var fyndStoreId: String

        public var id: String

        public var itemSize: String

        public var unitPrice: Double

        public var storeId: Int

        public var pdfLinks: MarketPlacePdf?

        public var transferPrice: Int

        public var companyId: Int

        public var avlQty: Int

        public var affiliateMeta: [String: Any]

        public var amountPaid: Double

        public var hsnCodeId: String

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case deliveryCharge = "delivery_charge"

            case identifier

            case itemId = "item_id"

            case modifiedOn = "modified_on"

            case discount

            case priceMarked = "price_marked"

            case affiliateStoreId = "affiliate_store_id"

            case quantity

            case priceEffective = "price_effective"

            case sku

            case fyndStoreId = "fynd_store_id"

            case id = "_id"

            case itemSize = "item_size"

            case unitPrice = "unit_price"

            case storeId = "store_id"

            case pdfLinks = "pdf_links"

            case transferPrice = "transfer_price"

            case companyId = "company_id"

            case avlQty = "avl_qty"

            case affiliateMeta = "affiliate_meta"

            case amountPaid = "amount_paid"

            case hsnCodeId = "hsn_code_id"

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.deliveryCharge = deliveryCharge

            self.identifier = identifier

            self.itemId = itemId

            self.modifiedOn = modifiedOn

            self.discount = discount

            self.priceMarked = priceMarked

            self.affiliateStoreId = affiliateStoreId

            self.quantity = quantity

            self.priceEffective = priceEffective

            self.sku = sku

            self.fyndStoreId = fyndStoreId

            self.id = id

            self.itemSize = itemSize

            self.unitPrice = unitPrice

            self.storeId = storeId

            self.pdfLinks = pdfLinks

            self.transferPrice = transferPrice

            self.companyId = companyId

            self.avlQty = avlQty

            self.affiliateMeta = affiliateMeta

            self.amountPaid = amountPaid

            self.hsnCodeId = hsnCodeId

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            discount = try container.decode(Double.self, forKey: .discount)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            quantity = try container.decode(Int.self, forKey: .quantity)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            sku = try container.decode(String.self, forKey: .sku)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            id = try container.decode(String.self, forKey: .id)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            storeId = try container.decode(Int.self, forKey: .storeId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            companyId = try container.decode(Int.self, forKey: .companyId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
