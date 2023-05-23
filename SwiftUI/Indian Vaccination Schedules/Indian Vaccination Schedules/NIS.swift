//
//  NIS.swift
//  Indian Vaccination Schedules
//
//  Created by John Lazarus on 02/05/23.
//

import SwiftUI
import PDFKit

struct NIS: View {
    var body: some View {
        VStack {
            Text("This is the NIS View!")
            }
        }
        
    }

struct PDFKitView: UIViewRepresentable {
    
    let pdfDocument: PDFDocument
    
    init(showing pdfDoc: PDFDocument) {
        self.pdfDocument = pdfDoc
    }
    
    //you could also have inits that take a URL or Data
    
    func makeUIView(context: Context) -> PDFView {
        let pdfView = PDFView()
        pdfView.document = pdfDocument
        pdfView.autoScales = true
        return pdfView
    }
    
    func updateUIView(_ pdfView: PDFView, context: Context) {
        pdfView.document = pdfDocument
    }
}

struct PDFUIView: View {
    
    let pdfDoc: PDFDocument
    
    init() {
        //for the sake of example, we're going to assume
        //you have a file Lipsum.pdf in your bundle
        let url = Bundle.main.url(forResource: "NISS", withExtension: "pdf")!
        pdfDoc = PDFDocument(url: url)!
    }
    
    var body: some View {
        PDFKitView(showing: pdfDoc)
    }
}


struct NIS_Previews: PreviewProvider {
    static var previews: some View {
        PDFUIView()
    }
}
