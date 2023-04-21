

import Foundation

public extension PlatformClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var sku: String

        public var id: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var discount: Double

        public var companyId: Int

        public var priceMarked: Double

        public var avlQty: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sku

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case discount

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case identifier

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.discount = discount

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}

public extension PlatformClient.ApplicationClient.Order {
    /*
         Model: AffiliateBag
         Used By: Order
     */

    class AffiliateBag: Codable {
        public var storeId: Int

        public var sku: String

        public var id: String

        public var sellerIdentifier: String

        public var itemId: Int

        public var discount: Double

        public var companyId: Int

        public var priceMarked: Double

        public var avlQty: Int

        public var amountPaid: Double

        public var deliveryCharge: Double

        public var fyndStoreId: String

        public var pdfLinks: MarketPlacePdf?

        public var modifiedOn: String

        public var itemSize: String

        public var affiliateStoreId: String

        public var unitPrice: Double

        public var identifier: [String: Any]

        public var priceEffective: Double

        public var affiliateMeta: [String: Any]

        public var hsnCodeId: String

        public var transferPrice: Int

        public var quantity: Int

        public enum CodingKeys: String, CodingKey {
            case storeId = "store_id"

            case sku

            case id = "_id"

            case sellerIdentifier = "seller_identifier"

            case itemId = "item_id"

            case discount

            case companyId = "company_id"

            case priceMarked = "price_marked"

            case avlQty = "avl_qty"

            case amountPaid = "amount_paid"

            case deliveryCharge = "delivery_charge"

            case fyndStoreId = "fynd_store_id"

            case pdfLinks = "pdf_links"

            case modifiedOn = "modified_on"

            case itemSize = "item_size"

            case affiliateStoreId = "affiliate_store_id"

            case unitPrice = "unit_price"

            case identifier

            case priceEffective = "price_effective"

            case affiliateMeta = "affiliate_meta"

            case hsnCodeId = "hsn_code_id"

            case transferPrice = "transfer_price"

            case quantity
        }

        public init(affiliateMeta: [String: Any], affiliateStoreId: String, amountPaid: Double, avlQty: Int, companyId: Int, deliveryCharge: Double, discount: Double, fyndStoreId: String, hsnCodeId: String, identifier: [String: Any], itemId: Int, itemSize: String, modifiedOn: String, pdfLinks: MarketPlacePdf? = nil, priceEffective: Double, priceMarked: Double, quantity: Int, sellerIdentifier: String, sku: String, storeId: Int, transferPrice: Int, unitPrice: Double, id: String) {
            self.storeId = storeId

            self.sku = sku

            self.id = id

            self.sellerIdentifier = sellerIdentifier

            self.itemId = itemId

            self.discount = discount

            self.companyId = companyId

            self.priceMarked = priceMarked

            self.avlQty = avlQty

            self.amountPaid = amountPaid

            self.deliveryCharge = deliveryCharge

            self.fyndStoreId = fyndStoreId

            self.pdfLinks = pdfLinks

            self.modifiedOn = modifiedOn

            self.itemSize = itemSize

            self.affiliateStoreId = affiliateStoreId

            self.unitPrice = unitPrice

            self.identifier = identifier

            self.priceEffective = priceEffective

            self.affiliateMeta = affiliateMeta

            self.hsnCodeId = hsnCodeId

            self.transferPrice = transferPrice

            self.quantity = quantity
        }

        required public init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)

            storeId = try container.decode(Int.self, forKey: .storeId)

            sku = try container.decode(String.self, forKey: .sku)

            id = try container.decode(String.self, forKey: .id)

            sellerIdentifier = try container.decode(String.self, forKey: .sellerIdentifier)

            itemId = try container.decode(Int.self, forKey: .itemId)

            discount = try container.decode(Double.self, forKey: .discount)

            companyId = try container.decode(Int.self, forKey: .companyId)

            priceMarked = try container.decode(Double.self, forKey: .priceMarked)

            avlQty = try container.decode(Int.self, forKey: .avlQty)

            amountPaid = try container.decode(Double.self, forKey: .amountPaid)

            deliveryCharge = try container.decode(Double.self, forKey: .deliveryCharge)

            fyndStoreId = try container.decode(String.self, forKey: .fyndStoreId)

            do {
                pdfLinks = try container.decode(MarketPlacePdf.self, forKey: .pdfLinks)

            } catch DecodingError.typeMismatch(let type, let context) {
                print("Type '\(type)' mismatch:", context.debugDescription)
                print("codingPath:", context.codingPath)
            } catch {}

            modifiedOn = try container.decode(String.self, forKey: .modifiedOn)

            itemSize = try container.decode(String.self, forKey: .itemSize)

            affiliateStoreId = try container.decode(String.self, forKey: .affiliateStoreId)

            unitPrice = try container.decode(Double.self, forKey: .unitPrice)

            identifier = try container.decode([String: Any].self, forKey: .identifier)

            priceEffective = try container.decode(Double.self, forKey: .priceEffective)

            affiliateMeta = try container.decode([String: Any].self, forKey: .affiliateMeta)

            hsnCodeId = try container.decode(String.self, forKey: .hsnCodeId)

            transferPrice = try container.decode(Int.self, forKey: .transferPrice)

            quantity = try container.decode(Int.self, forKey: .quantity)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.container(keyedBy: CodingKeys.self)

            try? container.encodeIfPresent(storeId, forKey: .storeId)

            try? container.encodeIfPresent(sku, forKey: .sku)

            try? container.encodeIfPresent(id, forKey: .id)

            try? container.encodeIfPresent(sellerIdentifier, forKey: .sellerIdentifier)

            try? container.encodeIfPresent(itemId, forKey: .itemId)

            try? container.encodeIfPresent(discount, forKey: .discount)

            try? container.encodeIfPresent(companyId, forKey: .companyId)

            try? container.encodeIfPresent(priceMarked, forKey: .priceMarked)

            try? container.encodeIfPresent(avlQty, forKey: .avlQty)

            try? container.encodeIfPresent(amountPaid, forKey: .amountPaid)

            try? container.encodeIfPresent(deliveryCharge, forKey: .deliveryCharge)

            try? container.encodeIfPresent(fyndStoreId, forKey: .fyndStoreId)

            try? container.encodeIfPresent(pdfLinks, forKey: .pdfLinks)

            try? container.encodeIfPresent(modifiedOn, forKey: .modifiedOn)

            try? container.encodeIfPresent(itemSize, forKey: .itemSize)

            try? container.encodeIfPresent(affiliateStoreId, forKey: .affiliateStoreId)

            try? container.encodeIfPresent(unitPrice, forKey: .unitPrice)

            try? container.encodeIfPresent(identifier, forKey: .identifier)

            try? container.encodeIfPresent(priceEffective, forKey: .priceEffective)

            try? container.encodeIfPresent(affiliateMeta, forKey: .affiliateMeta)

            try? container.encodeIfPresent(hsnCodeId, forKey: .hsnCodeId)

            try? container.encodeIfPresent(transferPrice, forKey: .transferPrice)

            try? container.encodeIfPresent(quantity, forKey: .quantity)
        }
    }
}
