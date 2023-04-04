

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemSize: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var storeId: Int

        public var avlQty: Int

        public var sku: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var unitPrice: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case discount

            case hsnCodeId = "hsn_code_id"

            case identifier

            case pdfLinks = "pdf_links"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case sku

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case quantity

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.avlQty = avlQty

            self.sku = sku

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

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
        public var affiliateMeta: [String: Any]

        public var discount: Double

        public var hsnCodeId: String

        public var identifier: [String: Any]

        public var pdfLinks: MarketPlacePdf?

        public var id: String

        public var deliveryCharge: Double

        public var amountPaid: Double

        public var itemSize: String

        public var priceMarked: Double

        public var priceEffective: Double

        public var companyId: Int

        public var fyndStoreId: String

        public var storeId: Int

        public var avlQty: Int

        public var sku: String

        public var transferPrice: Int

        public var modifiedOn: String

        public var affiliateStoreId: String

        public var itemId: Int

        public var unitPrice: Double

        public var quantity: Int

        public var sellerIdentifier: String

        public enum CodingKeys: String, CodingKey {
            case affiliateMeta = "affiliate_meta"

            case discount

            case hsnCodeId = "hsn_code_id"

            case identifier

            case pdfLinks = "pdf_links"

            case id = "_id"

            case deliveryCharge = "delivery_charge"

            case amountPaid = "amount_paid"

            case itemSize = "item_size"

            case priceMarked = "price_marked"

            case priceEffective = "price_effective"

            case companyId = "company_id"

            case fyndStoreId = "fynd_store_id"

            case storeId = "store_id"

            case avlQty = "avl_qty"

            case sku

            case transferPrice = "transfer_price"

            case modifiedOn = "modified_on"

            case affiliateStoreId = "affiliate_store_id"

            case itemId = "item_id"

            case unitPrice = "unit_price"

            case quantity

            case sellerIdentifier = "seller_identifier"
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.affiliateMeta = affiliateMeta

            self.discount = discount

            self.hsnCodeId = hsnCodeId

            self.identifier = identifier

            self.pdfLinks = pdfLinks

            self.id = id

            self.deliveryCharge = deliveryCharge

            self.amountPaid = amountPaid

            self.itemSize = itemSize

            self.priceMarked = priceMarked

            self.priceEffective = priceEffective

            self.companyId = companyId

            self.fyndStoreId = fyndStoreId

            self.storeId = storeId

            self.avlQty = avlQty

            self.sku = sku

            self.transferPrice = transferPrice

            self.modifiedOn = modifiedOn

            self.affiliateStoreId = affiliateStoreId

            self.itemId = itemId

            self.unitPrice = unitPrice

            self.quantity = quantity

            self.sellerIdentifier = sellerIdentifier
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            discount = try container.decode(Double.self, forKey: .discount)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            id = try container.decode(String.self, forKey: .id)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            companyId = try container.decode(Int.self, forKey: .companyId)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            storeId = try container.decode(Int.self, forKey: .storeId)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            sku = try container.decode(String.self, forKey: .sku)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            itemId = try container.decode(Int.self, forKey: .itemId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)
        }
    }
}
